﻿/* ----------------------------------------------------------------------------------- */
/* Copyright (C) Simplovation LLC (http://Simplovation.com) 2014. All rights reserved. */
/* Licensing information available at http://webmapsve.codeplex.com                    */
/* ----------------------------------------------------------------------------------- */
using System;

namespace Simplovation.Web.Maps.VE.Base
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = false)]
    public class ScriptControlEventAttribute : Attribute
    {
        public ScriptControlEventAttribute() { }

        public ScriptControlEventAttribute(string name)
        {
            this.Name = name;
        }

        public string Name { get; set; }
    }
}