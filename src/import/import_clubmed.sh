#!/usr/bin/env bash
mlcp.sh import -options_file conn.txt -database tickler-content -mode local -input_file_type aggregates -input_file_path travelfeeds/clubmed.xml -aggregate_record_element product