.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"

# interfaces
.implements Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserChanged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener<",
        "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1087
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChange(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;",
            ">;)V"
        }
    .end annotation

    .line 1091
    .local p1, "prevUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;>;"
    .local p2, "currentUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;>;"
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "FlpServiceProvider"

    const-string v1, "Active user has changed, updating FLP callbacks..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1097
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1098
    const-string v1, "FlpServiceProvider"

    const-string v3, "FLP data for new user is empty, creating new instance."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1104
    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 1106
    .local v1, "currentFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1107
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 1109
    .local v2, "prevFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 1111
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1113
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1114
    .local v5, "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1115
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_0

    .line 1117
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1118
    .restart local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1119
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_1

    .line 1122
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1123
    .restart local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1124
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_2

    .line 1125
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1127
    :try_start_2
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1129
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ISessionStatusCallback;

    .line 1130
    .local v5, "callback":Lcom/qti/flp/ISessionStatusCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1131
    .end local v5    # "callback":Lcom/qti/flp/ISessionStatusCallback;
    goto :goto_3

    .line 1132
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1134
    :try_start_4
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$4300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qti/flp/IMaxPowerAllocatedCallback;

    .line 1135
    .local v4, "callback":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    iget-object v5, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1136
    .end local v4    # "callback":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    goto :goto_4

    .line 1139
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$3800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 1141
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1142
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    .line 1146
    :cond_7
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3, v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 1148
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1149
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    .line 1152
    :cond_8
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1154
    :try_start_5
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1155
    .local v5, "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1156
    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1155
    invoke-virtual {v6, v5, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1157
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_5

    .line 1159
    :cond_9
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1160
    .restart local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1161
    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1160
    invoke-virtual {v6, v5, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1162
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_6

    .line 1165
    :cond_a
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ILocationCallback;

    .line 1166
    .restart local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1167
    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1166
    invoke-virtual {v6, v5, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1168
    .end local v5    # "callback":Lcom/qti/flp/ILocationCallback;
    goto :goto_7

    .line 1169
    :cond_b
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1171
    :try_start_6
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1173
    :try_start_7
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ISessionStatusCallback;

    .line 1174
    .local v5, "callback":Lcom/qti/flp/ISessionStatusCallback;
    iget-object v6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1175
    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1174
    invoke-virtual {v6, v5, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1176
    .end local v5    # "callback":Lcom/qti/flp/ISessionStatusCallback;
    goto :goto_8

    .line 1177
    :cond_c
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1179
    :try_start_8
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$4300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qti/flp/IMaxPowerAllocatedCallback;

    .line 1180
    .restart local v4    # "callback":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    iget-object v5, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1181
    .end local v4    # "callback":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    goto :goto_9

    .line 1182
    .end local v1    # "currentFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    .end local v2    # "prevFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    :cond_d
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1183
    return-void

    .line 1177
    .restart local v1    # "currentFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    .restart local v2    # "prevFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    :catchall_0
    move-exception v4

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1169
    :catchall_1
    move-exception v4

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1132
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1125
    :catchall_3
    move-exception v4

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v4

    .line 1182
    .end local v1    # "currentFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    .end local v2    # "prevFlpUserData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v1
.end method
