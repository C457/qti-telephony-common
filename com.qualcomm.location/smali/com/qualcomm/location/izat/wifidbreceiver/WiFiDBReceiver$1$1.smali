.class Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;
.super Ljava/lang/Object;
.source "WiFiDBReceiver.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->registerResponseListenerExt(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;

    .line 89
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;->this$1:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;->this$1:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$102(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 94
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;->this$1:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$302(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
