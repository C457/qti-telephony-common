.class Lcom/qualcomm/location/osagent/OsAgent$14;
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

    .line 1669
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$14;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1671
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1673
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1674
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.RSSI"

    const/16 v4, -0x8000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 1675
    .local v3, "rssi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassisBtDevScanning btdevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1678
    const/4 v4, 0x6

    .line 1679
    .local v4, "BT_MAC_ADDR_LENGTH":I
    const/4 v5, 0x0

    .line 1680
    .local v5, "i":I
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1682
    .local v6, "val":Ljava/lang/Integer;
    const/4 v7, 0x6

    new-array v15, v7, [B

    .line 1683
    .local v15, "btApMacAddress":[B
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1684
    .local v16, "bssid":[Ljava/lang/String;
    const/4 v5, 0x0

    move v13, v5

    move-object/from16 v17, v6

    .end local v5    # "i":I
    .end local v6    # "val":Ljava/lang/Integer;
    .local v13, "i":I
    .local v17, "val":Ljava/lang/Integer;
    :goto_0
    if-ge v13, v7, :cond_0

    .line 1685
    aget-object v5, v16, v13

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1686
    .end local v17    # "val":Ljava/lang/Integer;
    .local v5, "val":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    aput-byte v6, v15, v13

    .line 1684
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v5

    goto :goto_0

    .line 1688
    .end local v5    # "val":Ljava/lang/Integer;
    .restart local v17    # "val":Ljava/lang/Integer;
    :cond_0
    move-object/from16 v14, p0

    iget-object v5, v14, Lcom/qualcomm/location/osagent/OsAgent$14;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move v7, v3

    move-object v8, v15

    move/from16 v21, v13

    move-wide/from16 v13, v18

    .end local v13    # "i":I
    .local v21, "i":I
    move-object/from16 v18, v15

    move/from16 v15, v20

    .end local v15    # "btApMacAddress":[B
    .local v18, "btApMacAddress":[B
    invoke-static/range {v5 .. v15}, Lcom/qualcomm/location/osagent/OsAgent;->access$2000(Lcom/qualcomm/location/osagent/OsAgent;ZI[BJJJI)V

    .line 1690
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "rssi":I
    .end local v4    # "BT_MAC_ADDR_LENGTH":I
    .end local v16    # "bssid":[Ljava/lang/String;
    .end local v17    # "val":Ljava/lang/Integer;
    .end local v18    # "btApMacAddress":[B
    .end local v21    # "i":I
    :cond_1
    return-void
.end method
