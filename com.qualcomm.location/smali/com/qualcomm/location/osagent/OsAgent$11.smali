.class Lcom/qualcomm/location/osagent/OsAgent$11;
.super Landroid/content/BroadcastReceiver;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/osagent/OsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 977
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$11;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 983
    const-string v0, "newState"

    .line 984
    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/SupplicantState;

    .line 985
    .local v4, "supplicantState":Landroid/net/wifi/SupplicantState;
    if-nez v4, :cond_0

    .line 986
    const-string v0, "WifiManager.EXTRA_NEW_STATE returned null"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1300(Ljava/lang/String;)V

    .line 987
    return-void

    .line 990
    :cond_0
    const/4 v5, 0x0

    .line 991
    .local v5, "i":I
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 992
    .local v6, "val":Ljava/lang/Integer;
    const/4 v7, 0x6

    .line 993
    .local v7, "MAC_ADDR_LENGTH":I
    const/16 v8, 0x20

    .line 995
    .local v8, "SSID_LENGTH":I
    const/4 v0, 0x6

    new-array v15, v0, [B

    .line 996
    .local v15, "apMacAddress":[B
    const/4 v9, 0x0

    .line 997
    .local v9, "isAPMacAddressValid":I
    const/4 v10, 0x0

    .line 998
    .local v10, "isSSIDValid":I
    const/4 v11, 0x0

    .line 1000
    .local v11, "ssid":[C
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SUPPLICANT_STATE:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1002
    sget-object v12, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v12, :cond_3

    .line 1003
    iget-object v12, v1, Lcom/qualcomm/location/osagent/OsAgent$11;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v12}, Lcom/qualcomm/location/osagent/OsAgent;->access$1400(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, v1, Lcom/qualcomm/location/osagent/OsAgent$11;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v13}, Lcom/qualcomm/location/osagent/OsAgent;->access$1400(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 1004
    .local v12, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 1005
    .local v13, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v13, :cond_3

    .line 1008
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connection info - BSSID - "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - SSID - "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "bssid":[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_0
    const/4 v14, 0x6

    if-ge v5, v14, :cond_1

    .line 1013
    aget-object v14, v0, v5

    move-object/from16 v18, v0

    const/16 v0, 0x10

    .end local v0    # "bssid":[Ljava/lang/String;
    .local v18, "bssid":[Ljava/lang/String;
    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    .line 1014
    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v15, v5

    .line 1012
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v18

    goto :goto_0

    .line 1016
    .end local v18    # "bssid":[Ljava/lang/String;
    .restart local v0    # "bssid":[Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "bssid":[Ljava/lang/String;
    .restart local v18    # "bssid":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 1018
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v11, v0

    .line 1019
    if-eqz v11, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v14, 0x20

    if-gt v0, v14, :cond_2

    .line 1021
    const-string v0, "ssid string is valid"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1022
    const/4 v0, 0x1

    .end local v10    # "isSSIDValid":I
    .local v0, "isSSIDValid":I
    goto :goto_1

    .line 1026
    .end local v0    # "isSSIDValid":I
    .restart local v10    # "isSSIDValid":I
    :cond_2
    const-string v0, "ssid string is invalid"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    const/4 v0, 0x0

    .line 1035
    .end local v10    # "isSSIDValid":I
    .end local v18    # "bssid":[Ljava/lang/String;
    .restart local v0    # "isSSIDValid":I
    :goto_1
    nop

    .line 1039
    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object v6, v11

    move v5, v0

    move v0, v9

    goto :goto_3

    .line 1033
    .end local v0    # "isSSIDValid":I
    .restart local v10    # "isSSIDValid":I
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v14, "Unable to get BSSID/SSID"

    invoke-static {v14}, Lcom/qualcomm/location/osagent/OsAgent;->access$1300(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v12    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    goto :goto_2

    .line 1030
    .restart local v12    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_1
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v14, "Unable to parse mac address"

    invoke-static {v14}, Lcom/qualcomm/location/osagent/OsAgent;->access$1300(Ljava/lang/String;)V

    .line 1035
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    nop

    .line 1039
    .end local v9    # "isAPMacAddressValid":I
    .end local v10    # "isSSIDValid":I
    .end local v11    # "ssid":[C
    .end local v12    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v0, "isAPMacAddressValid":I
    .local v5, "isSSIDValid":I
    .local v6, "ssid":[C
    .local v16, "i":I
    .local v17, "val":Ljava/lang/Integer;
    :cond_3
    :goto_2
    move/from16 v16, v5

    move-object/from16 v17, v6

    move v0, v9

    move v5, v10

    move-object v6, v11

    :goto_3
    iget-object v9, v1, Lcom/qualcomm/location/osagent/OsAgent$11;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-virtual {v4}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v10

    move v11, v0

    move-object v12, v15

    move v13, v5

    move-object v14, v6

    invoke-static/range {v9 .. v14}, Lcom/qualcomm/location/osagent/OsAgent;->access$1500(Lcom/qualcomm/location/osagent/OsAgent;II[BI[C)V

    .end local v0    # "isAPMacAddressValid":I
    .end local v4    # "supplicantState":Landroid/net/wifi/SupplicantState;
    .end local v5    # "isSSIDValid":I
    .end local v6    # "ssid":[C
    .end local v7    # "MAC_ADDR_LENGTH":I
    .end local v8    # "SSID_LENGTH":I
    .end local v15    # "apMacAddress":[B
    .end local v16    # "i":I
    .end local v17    # "val":Ljava/lang/Integer;
    goto :goto_4

    .line 1042
    :cond_4
    move-object/from16 v3, p2

    :goto_4
    return-void
.end method
