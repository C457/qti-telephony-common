.class public Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataPerPackageAndUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/DataPerPackageAndUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 172
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>.UserSwitchReceiver;"
    iput-object p1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>.UserSwitchReceiver;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "userId":I
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "newUser":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "DataPerPackageAndUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User switched to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$100(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 185
    invoke-static {v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$300(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 187
    .local v3, "newUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TGenericData;>;"
    if-nez v3, :cond_1

    .line 188
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 189
    iget-object v4, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$300(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$500(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v5}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$400(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;->onUserChange(Ljava/util/Map;Ljava/util/Map;)V

    .line 194
    iget-object v4, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v4, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$102(Lcom/qualcomm/location/izat/DataPerPackageAndUser;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v4, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;->this$0:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-static {v4, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->access$402(Lcom/qualcomm/location/izat/DataPerPackageAndUser;Ljava/util/Map;)Ljava/util/Map;

    .line 196
    .end local v3    # "newUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TGenericData;>;"
    monitor-exit v2

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
