.class Lcom/qualcomm/location/izat/LocationSettingsHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/LocationSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/LocationSettingsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 73
    iput-object p1, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    invoke-static {v0}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->access$000(Lcom/qualcomm/location/izat/LocationSettingsHelper;)Z

    move-result v0

    .line 79
    .local v0, "isLocationSettingsOnNow":Z
    invoke-static {}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "LocationSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLocationSettingsOnNow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsLocationSettingsOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    iget-boolean v3, v3, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    iget-boolean v1, v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    if-eq v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    iput-boolean v0, v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    .line 85
    iget-object v1, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 86
    invoke-static {v1}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->access$200(Lcom/qualcomm/location/izat/LocationSettingsHelper;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 89
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;

    .line 90
    .local v2, "locationSettingsCallback":Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;
    iget-object v3, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;->this$0:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    iget-boolean v3, v3, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    invoke-interface {v2, v3}, Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;->onLocationSettingsChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v2    # "locationSettingsCallback":Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;
    :goto_1
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "LocationSettingsHelper"

    const-string v4, "Invalid locationSettingsCallback."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 98
    .end local v0    # "isLocationSettingsOnNow":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;>;"
    :cond_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :cond_2
    :goto_2
    return-void
.end method
