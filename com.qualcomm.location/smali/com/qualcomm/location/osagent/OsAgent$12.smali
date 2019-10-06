.class Lcom/qualcomm/location/osagent/OsAgent$12;
.super Ljava/lang/Object;
.source "OsAgent.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 1593
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$12;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 21
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    move-object/from16 v0, p0

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan BTLE device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1599
    const/4 v1, 0x6

    .line 1600
    .local v1, "BTLE_MAC_ADDR_LENGTH":I
    const/4 v3, 0x0

    .line 1601
    .local v3, "i":I
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1603
    .local v4, "val":Ljava/lang/Integer;
    const/4 v5, 0x6

    new-array v14, v5, [B

    .line 1604
    .local v14, "btApMacAddress":[B
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1605
    .local v15, "bssid":[Ljava/lang/String;
    const/4 v3, 0x0

    move v13, v3

    move-object/from16 v16, v4

    .end local v3    # "i":I
    .end local v4    # "val":Ljava/lang/Integer;
    .local v13, "i":I
    .local v16, "val":Ljava/lang/Integer;
    :goto_0
    if-ge v13, v5, :cond_0

    .line 1606
    aget-object v3, v15, v13

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1607
    .end local v16    # "val":Ljava/lang/Integer;
    .local v3, "val":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v14, v13

    .line 1605
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v16, v3

    goto :goto_0

    .line 1609
    .end local v3    # "val":Ljava/lang/Integer;
    .restart local v16    # "val":Ljava/lang/Integer;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1610
    .local v17, "btleDevScanRcvTime":J
    iget-object v3, v0, Lcom/qualcomm/location/osagent/OsAgent$12;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/qualcomm/location/osagent/OsAgent$12;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    .line 1611
    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->access$1800(Lcom/qualcomm/location/osagent/OsAgent;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/16 v19, 0x0

    .line 1610
    move v5, v2

    move-object v6, v14

    move-wide/from16 v7, v17

    move/from16 v20, v13

    move/from16 v13, v19

    .end local v13    # "i":I
    .local v20, "i":I
    invoke-static/range {v3 .. v13}, Lcom/qualcomm/location/osagent/OsAgent;->access$1900(Lcom/qualcomm/location/osagent/OsAgent;ZI[BJJJI)V

    .line 1613
    return-void
.end method
