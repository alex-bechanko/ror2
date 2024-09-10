#!/usr/bin/env bash
# Risk of Rain 2 item viewer
# Copyright (C) 2024 Alex Bechanko
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


# a hacky script to make a json file a javascript object loadable via a <script> tag
# yes this is hacky don't sass me

variable_name=$1
json_file=$2

sed -e "1 s/^/var ${variable_name} = /" -e '$ s/$/;/' -i "${json_file}"
