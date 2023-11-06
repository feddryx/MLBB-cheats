CC_FYX = {
	"Made by FangYX™"
}
function CC_FS(FANGTION)
	if FANGTION == "Main" then
		CC_FYX["MainMenu"] = gg["choice"]({
			"🔎 Visibility Hack 🔎",
			"🚀 Change Camera Angle 🚀️",
			"⛔ Return Visibility ⛔",
			"< F A Q >",
			"[E X I T]"
		}, nil, CC_FYX[1])
		if CC_FYX["MainMenu"] == 1 then
			CC_FS("Visibility")
		elseif CC_FYX["MainMenu"] == 2 then
			CC_FS("Angle")
		elseif CC_FYX["MainMenu"] == 3 then
			CC_FS("Deactive")
		elseif CC_FYX["MainMenu"] == 4 then
			CC_FS("FAQ")
		elseif CC_FYX["MainMenu"] == 5 then
			CC_FS("Exit")
		end
	end
	if FANGTION == "Angle" then
		CC_FYX["AngleMenu"] = gg["prompt"]({
			"☁️ RESET ANGLE ☁️",
			"⛅ High View ⛅️️[0;3]",
			"🌉 3D View 🌉️[0;3]",
			"< B A C K >",
			"[E X I T]"
		}, nil, {
			"checkbox",
			"number",
			"number",
			"checkbox",
			"checkbox"
		})
		if CC_FYX["AngleMenu"] == nil then
			CC_FYX["AngleMenu"] = {}
			CC_FS("Main")
		else
			if CC_FYX["AngleMenu"][1] == true then
				CC_FS("ResetAngle")
			end
			if CC_FYX["AngleMenu"][2] == "1" then
				CC_FS("HighView1")
			end
			if CC_FYX["AngleMenu"][2] == "2" then
				CC_FS("HighView2")
			end
			if CC_FYX["AngleMenu"][2] == "3" then
				CC_FS("HighView3")
			end
			if CC_FYX["AngleMenu"][3] == "1" then
				CC_FS("3DView1")
			end
			if CC_FYX["AngleMenu"][3] == "2" then
				CC_FS("3DView2")
			end
			if CC_FYX["AngleMenu"][3] == "3" then
				CC_FS("3DView3")
			end
			if CC_FYX["AngleMenu"][4] == true then
				CC_FS("Main")
			end
			if CC_FYX["AngleMenu"][5] == true then
				CC_FS("Exit")
			end
		end
	end
	if FANGTION == "VisibilitySearch" then
		gg["clearResults"]()
		gg["setRanges"](32)
		gg["searchNumber"]("90111,93574326272", 32)
		if gg["isVisible"](true) then
			gg["setVisible"](false)
		end
		if gg["getResultsCount"]() == 0 then
			gg["alert"]("❌ Value Not Found ❌")
		else
			CC_FYX["Result"] = gg["getResults"](99)
			for i, FS in ipairs(CC_FYX["Result"]) do
				FS["address"] = FS["address"] - 4
			end
			for i, FS in ipairs(CC_FYX["Result"]) do
				if FS["value"] == 2 or 23 then CC_FYX["count"] = i
					FS["address"] = FS["address"] - 8
					FS["flags"] = 16
				elseif i == #CC_FYX["Result"] then
					CC_FYX["count"] = nil
					gg["alert"]("❌ Value Not Found ❌")
				end
			end
			gg["clearResults"]()
			if CC_FYX["count"] then
				while CC_FYX["VisibilityAddress"] == nil do
					if gg["getValues"](CC_FYX["Result"])[CC_FYX["count"]]["value"] == 1.5414283107572988e-44 then
						for i, FS in ipairs(CC_FYX["Result"]) do
							CC_FYX["VisibilityAddress"] = FS["address"] + 4
						end
					else
						if gg["isVisible"](true) then
							if gg["alert"]("🔄 Waiting For Value! 🔄\n\nDo you want to cancel?", "Cancel", "Keep waiting...") == 1 then
								break
							end
							gg["setVisible"](false)
						end
					end
				end
			end
		end
	end
	if FANGTION == "Visibility" then
		if CC_FYX["VisibilityAddress"] == nil then
			CC_FS("VisibilitySearch")
		end
		if CC_FYX["VisibilityAddress"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["VisibilityAddress"],
					["flags"] = 1,
					["value"] = 0
				}
			})
			gg["toast"]("🔎 The visible area has been enlarged 🔎")
		end
	end
	if FANGTION == "Deactive" then
		if CC_FYX["VisibilityAddress"] == nil then
			if gg["alert"]("You are not even turned on the Visibility Hack yet!\n\nStill want to do it?", "Force Disable", "Back") == 1 then
				CC_FS("VisibilitySearch")
			else
				CC_FS("Main")
			end
		end
		if CC_FYX["VisibilityAddress"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["VisibilityAddress"],
					["flags"] = 4,
					["value"] = 14
				}
			})
			gg["toast"]("⛔ Disabled Visibility Hack ⛔")
		end
	end
	if FANGTION == "AngleSearch" then
		gg["clearResults"]()
		gg["setRanges"](32)
		gg["searchNumber"]("; Ẹ䃵긔섯휊䃳炤䈫馚䈳尩붏")
		if gg["isVisible"](true) then
			gg["setVisible"](false)
		end
		while not CC_FYX["AngleList"] do
			if gg["getResultsCount"]() == 0 then
				gg["alert"]("❌ Value Not Found ❌")
				break
			else
				gg["removeResults"](gg["getResults"](2))
				CC_FYX["AngleList"] = {gg["getResults"](10)}
				gg["clearResults"]()
				gg["searchNumber"]("; Ẹ샵긔섯휊샳炤䈫ᦚ쌆")
				if gg["isVisible"](true) then
					gg["setVisible"](false)
				end
				if gg["getResultsCount"]() == 0 then
					gg["alert"]("❌ Value Not Found ❌")
					CC_FYX["AngleList"] = nil
					break
				else
					gg["removeResults"](gg["getResults"](2))
					CC_FYX["AngleList"][2] = gg["getResults"](10)
				end
			end
		end
		gg["clearResults"]()
	end
	if FANGTION == "ResetAngle" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16629
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -20972
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16081
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16627
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16139
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -20972
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16081
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16141
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("☁️ Angle Resetted ☁")
		end
	end
	if FANGTION == "HighView1" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 10168
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16690
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 25972
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16009
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -8182
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16688
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 10168
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16078
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 25972
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16009
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -6038
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16084
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("🌥️ Angle Changed 🌥️")
		end
	end
	if FANGTION == "HighView2" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -13107
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16748
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -19891
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -15966
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 10486
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16748
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 12472
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16017
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -19891
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -15966
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -5878
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16019
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("🌈 Angle Changed 🌈")
		end
	end
	if FANGTION == "HighView3" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -2184
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16796
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 2052
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -15914
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -20534
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16795
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -12904
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -15952
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -2954
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -15894
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = 27498
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -15959
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("🌎 Angle Changed 🌎️")
		end
	end
	if FANGTION == "3DView1" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 28216
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16647
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -31820
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16238
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 9866
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16646
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = -3
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16786
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -23752
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16109
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 6036
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16233
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = 23434
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16110
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = -3
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16786
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("🏞️️️ Angle Changed 🏞️")
		end
	end
	if FANGTION == "3DView2" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -29146
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16719
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16203
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 9293
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = -16966
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 13107
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16811
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = 31072
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 17074
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -4488
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16033
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16203
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -31222
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16690
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 7268
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16802
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 13898
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15689
				}
			})
			gg["toast"]("🌉️ Angle Changed 🌉")
		end
	end
	if FANGTION == "3DView3" then
		if CC_FYX["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FYX["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FYX["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -29472
				},
				{
					["address"] = CC_FYX["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16666
				},
				{
					["address"] = CC_FYX["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 20021
				},
				{
					["address"] = CC_FYX["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16255
				},
				{
					["address"] = CC_FYX["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 2301
				},
				{
					["address"] = CC_FYX["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = -16145
				},
				{
					["address"] = CC_FYX["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 13107
				},
				{
					["address"] = CC_FYX["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16763
				},
				{
					["address"] = CC_FYX["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = 16960
				},
				{
					["address"] = CC_FYX["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 17151
				},
				{
					["address"] = CC_FYX["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FYX["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16139
				},
				{
					["address"] = CC_FYX["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -13107
				},
				{
					["address"] = CC_FYX["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16308
				},
				{
					["address"] = CC_FYX["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FYX["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16141
				},
				{
					["address"] = CC_FYX["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FYX["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FYX["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FYX["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("🌆 Angle Changed 🌆")
		end
	end
	if FANGTION == "FAQ" then
		gg["alert"]("• To prevent got banned, only activate the script in the Custom Mode with enabling airplane mode or turn off your mobile data and Wi-Fi. And then exit the script and close your GameGuardian app before turning on the network again. But as always, do with your own risk!\n\n• If the camera angle still not changed even you have activate it already, try to go to the setting and select \"Camera Height: High\" to refresh the camera.\n\n• \"The camera hack says the value are not found!\", It might be you've activate it and then close the script and want to change it again. I haven't make it detect the modified camera value so currently it won't be work.")
		CC_FS("Main")
	end
	if FANGTION == "Exit" then
		gg["setVisible"](true)
		print("Thank you for using my script!\n\nContact Me\n	• Telegram: @feddryx")
		os["exit"]()
	end
end
gg["require"]("80.0")
while true do
	if gg["isVisible"](true) then
		gg["setVisible"](false)
		CC_FS("Main")
	end
end