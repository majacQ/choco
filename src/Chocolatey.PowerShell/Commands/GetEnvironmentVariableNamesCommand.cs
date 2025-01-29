﻿// Copyright © 2017 - 2024 Chocolatey Software, Inc
// Copyright © 2011 - 2017 RealDimensions Software, LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
//
// You may obtain a copy of the License at
//
// 	http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

using System;
using System.Management.Automation;
using Chocolatey.PowerShell.Helpers;
using Chocolatey.PowerShell.Shared;

namespace Chocolatey.PowerShell.Commands
{
    [Cmdlet(VerbsCommon.Get, "EnvironmentVariableNames")]
    [OutputType(typeof(string))]
    public class GetEnvironmentVariableNamesCommand : ChocolateyCmdlet
    {
        [Parameter(Position = 0)]
        public EnvironmentVariableTarget Scope { get; set; }

        // Do not log function call
        protected override bool Logging { get; } = false;


        protected override void End()
        {
            WriteObject(EnvironmentHelper.GetVariableNames(Scope));
        }
    }
}
