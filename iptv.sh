#!/bin/sh
# --- Twój własny instalator IPTV ---

LIST_PATH="/etc/enigma2/m4gt.m3u"
LIST_URL="https://raw.githubusercontent.com/twoja-nazwa/moja-iptv/main/m4gt.m3u"

echo "📥 Pobieram Twoją listę IPTV..."
wget -O "$LIST_PATH" "$LIST_URL"

if [ $? -eq 0 ]; then
    echo "✅ Lista została pobrana i zapisana w $LIST_PATH"
    echo "🔄 Restartuję GUI Enigmy..."
    killall -9 enigma2
else
    echo "❌ Błąd pobierania listy!"
fi
