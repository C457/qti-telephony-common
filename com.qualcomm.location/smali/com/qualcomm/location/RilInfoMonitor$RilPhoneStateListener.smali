.class final Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RilInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/RilInfoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RilPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/RilInfoMonitor;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/RilInfoMonitor;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/RilInfoMonitor;Lcom/qualcomm/location/RilInfoMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/RilInfoMonitor;
    .param p2, "x1"    # Lcom/qualcomm/location/RilInfoMonitor$1;

    .line 93
    invoke-direct {p0, p1}, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;-><init>(Lcom/qualcomm/location/RilInfoMonitor;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 114
    const-string v0, "RilInfoMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged(): state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez p1, :cond_1

    .line 118
    const-string v0, "RilInfoMonitor"

    const-string v1, "state == TelephonyManager.CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "RilInfoMonitor"

    const-string v1, "GpsNetInitiatedHandler is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_0
    const-string v0, "RilInfoMonitor"

    const-string v1, "calling GpsNetInitiatedHandler.obj.updateEmergencySUPLStatus(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->updateEmergencySUPLStatus(Z)V

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 96
    const-string v0, "onCellLocationChanged () called"

    invoke-static {v0}, Lcom/qualcomm/location/RilInfoMonitor;->access$000(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    invoke-static {v0}, Lcom/qualcomm/location/RilInfoMonitor;->access$100(Lcom/qualcomm/location/RilInfoMonitor;)V

    .line 98
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 104
    invoke-static {}, Lcom/qualcomm/location/RilInfoMonitor;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "onServiceStateChanged - OOS"

    invoke-static {v0}, Lcom/qualcomm/location/RilInfoMonitor;->access$000(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/qualcomm/location/RilInfoMonitor;->sendMessage(IIILjava/lang/Object;)V

    .line 110
    :cond_1
    return-void
.end method
