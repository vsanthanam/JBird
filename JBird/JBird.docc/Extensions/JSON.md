# ``JSON``

## Topics

### Initializers

- ``init(_:)-(JSONEncodable)``
- ``init(fields:)``

### Subtypes

- ``Literal``
- ``Numeric``

### Decoding JSON values into Swift types

- ``literalValue``
- ``boolValue``
- ``numericValue``
- ``intValue``
- ``doubleValue``
- ``stringValue``
- ``arrayValue``
- ``objectValue``
- ``untyped``
- ``decode(into:)``

### Inspecting JSON values

- ``count``
- ``isEmpty``
- ``isBool``
- ``isNull``
- ``isLiteral``
- ``isObject``
- ``isArray``
- ``isNumeric``
- ``isInt``
- ``isDouble``
- ``isString``

### Subscripting

- ``value(forSubscript:)-(Subscript)``
- ``value(forSubscript:)-(JSONSubscriptConvertible)``
- ``value(atPath:)-([Subscript])``
- ``value(atPath:)-(PathComponent)``
- ``containsValue(forSubscript:)-(Subscript)``
- ``containsValue(forSubscript:)-(JSONSubscriptConvertible)``
- ``setValue(_:forSubscript:)-(_,Subscript)``
- ``setValue(_:forSubscript:)-(_,JSONSubscriptConvertible)``
- ``removeValue(forSubscript:)-(Subscript)``
- ``removeValue(forSubscript:)-(JSONSubscriptConvertible)``
- ``subscript(_:)-(Subscript...)``
- ``subscript(_:)-(PathComponent)``
- ``subscript(_:as:)-(Subscript...,_)``
- ``subscript(_:as:)-(PathComponent,_)``

### Working with JSON objects

- ``keys``
- ``values``
- ``value(forKey:)-(StringProtocol)``
- ``value(forKey:)-(Key)``
- ``containsValue(forKey:)-(StringProtocol)``
- ``containsValue(forKey:)-(Key)``
- ``setValue(_:forKey:)-(_,StringProtocol)``
- ``setValue(_:forKey:)-(_,Key)``
- ``removeValue(forKey:)-(StringProtocol)``
- ``removeValue(forKey:)-(Key)``
- ``merge(_:uniquingKeysWith:)``
- ``merging(_:uniquingKeysWith:)``
- ``filter(_:)-(([String:JSON].Element)->Bool)``
- ``allSatisfy(_:)-(([String:JSON].Element)->Bool)``
- ``map(_:)-(([String:JSON].Element)->T)``
- ``mapValues(_:)``
- ``compactMap(_:)-(([String:JSON].Element)->ElementOfResult?)``
- ``compactMapValues(_:)``
- ``reduce(into:_:)-(_,(Result,[String:JSON].Element)->Void)``
- ``reduce(_:_:)-(_,(Result,[String:JSON].Element)->Result)``
- ``forEach(_:)-(([String:JSON].Element)->Void)``

### Working with JSON arrays

- ``first``
- ``last``
- ``value(atIndex:)-(BinaryInteger)``
- ``value(atIndex:)-(Index)``
- ``containsValue(atIndex:)-(BinaryInteger)``
- ``containsValue(atIndex:)-(Index)``
- ``setValue(_:atIndex:)-(_,BinaryInteger)``
- ``setValue(_:atIndex:)-(_,Index)``
- ``removeValue(atIndex:)-(BinaryInteger)``
- ``removeValue(atIndex:)-(Index)``
- ``insert(_:at:)-(_,BinaryInteger)``
- ``insert(_:at:)-(_,Index)``
- ``swapAt(_:_:)-(BinaryInteger,_)``
- ``swapAt(_:_:)-(Index,_)`` 
- ``append(_:)``
- ``append(contentsOf:)-(JSON)``
- ``append(contentsOf:)-(Collection<JSON>)``
- ``appending(_:)``
- ``appending(contentsOf:)-(JSON)``
- ``appending(contentsOf:)-(Collection<JSON>)``
- ``filter(_:)-((JSON)->Bool)``
- ``allSatisfy(_:)-((JSON)->Bool)``
- ``map(_:)-((JSON)->T)``
- ``compactMap(_:)-((JSON)->ElementOfResult?)``
- ``reduce(into:_:)-(_,(Result,JSON)->Void)``
- ``reduce(_:_:)-(_,(Result,JSON)->Result)``
- ``forEach(_:)-((JSON)->Void)``

### Deserialization

- ``init(_:)-(Data)``
- ``init(deserializing:)``
- ``Deserialization``

### Serialization

- ``serialize()``
- ``stringify()``
- ``Serialization``

### Result Builders

- ``ArrayBuilder``
- ``ObjectBuilder``

### Literal Expression Support

- ``BooleanLiteralType``
- ``init(booleanLiteral:)``
- ``IntegerLiteralType``
- ``init(integerLiteral:)``
- ``FloatLiteralType``
- ``init(floatLiteral:)``
- ``StringLiteralType``
- ``init(stringLiteral:)``
- ``ArrayLiteralElement``
- ``init(arrayLiteral:)``
- ``Key``
- ``Value``
- ``init(dictionaryLiteral:)``
- ``init(nilLiteral:)``
