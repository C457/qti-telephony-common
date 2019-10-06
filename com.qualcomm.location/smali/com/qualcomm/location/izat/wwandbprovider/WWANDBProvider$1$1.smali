.class Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;
.super Ljava/lang/Object;
.source "WWANDBProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->registerResponseListener(Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;Landroid/app/PendingIntent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;

    .line 81
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;->this$1:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;->this$1:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$102(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 86
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;->this$1:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$302(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
