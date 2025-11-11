#!/bin/sh
# --- Twój własny instalator IPTV ---

# Ścieżka do zapisu listy na tunerze
LIST_PATH="/etc/enigma2/m4gt.m3u"

# Twój link do listy M3U
LIST_URL="https://raw.githubusercontent.com/m4-gt/iptv/refs/heads/main/m4gt.m3u"

echo "📥 Pobieram Twoją listę IPTV..."
wget -O "$LIST_PATH" "$LIST_URL"

if [ $? -eq 0 ]; then
    echo "✅ Lista została pobrana i zapisana w $LIST_PATH"
    echo "🔄 Restartuję GUI Enigmy..."
    killall -9 enigma2
else
    echo "❌ Błąd podczas pobierania listy!"
fi
