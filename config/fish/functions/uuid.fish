function uuid
  uuidgen | tr '[:upper:]' '[:lower:]' | tr -d '\n'
end
