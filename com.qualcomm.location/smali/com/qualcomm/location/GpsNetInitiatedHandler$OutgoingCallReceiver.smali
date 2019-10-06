.class public Lcom/qualcomm/location/GpsNetInitiatedHandler$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutgoingCallReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    const-string v0, "LocSvc_NiH"

    const-string v1, "OutgoingCallReceiver :: onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 179
    const-string v1, "LocSvc_NiH"

    const-string v2, "bundle == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_0
    const-string v1, "LocSvc_NiH"

    const-string v2, "bundle != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "phonenumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    const-string v2, "LocSvc_NiH"

    const-string v3, "PhoneNumberUtils.isEmergencyNumber(phonenumber)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v2, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->updateEmergencySUPLStatus(Z)V

    .line 192
    :cond_1
    return-void
.end method
