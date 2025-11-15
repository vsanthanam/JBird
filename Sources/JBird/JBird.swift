// JBird
// JBird.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#if SWIFT_PACKAGE && swift(>=6.1)
    @_exported import JBirdCore

    #if DeclarativeAPI
        @_exported import JBirdBuilders
    #endif

    #if ConformanceMacros
        #if DeclarativeAPI
            @_exported import JBirdMacros
        #else
            #error("You cannot use the ConformanceMacro trait without the Declarative API trait!")
        #endif
    #endif
#else
    #if canImport(JBirdCore)
        @_exported import JBirdCore
        #if canImport(JBirdBuilders)
            @_exported import JBirdBuilders
        #endif

        #if canImport(JBirdMacros)
            #if canImport(JBirdBuilders)
                @_exported import JBirdMacros
            #else
                #error("You cannot use JBirdMacros without JBirdBuilders")
            #endif
        #endif
    #else
        #error("The umbrella module JBird requires JBirdCore")
    #endif
#endif

enum JBirdEnum {}
