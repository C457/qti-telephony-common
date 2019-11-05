.class public final Lcom/dts/dtssdk/util/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Landroid/app/Notification;

.field private static c:Lcom/dts/dtssdk/util/h;


# direct methods
.method public static declared-synchronized a()I
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/dts/dtssdk/util/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/dts/dtssdk/util/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/app/Notification;)V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/dts/dtssdk/util/g;->b:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/dts/dtssdk/util/h;)V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/dts/dtssdk/util/g;->c:Lcom/dts/dtssdk/util/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Landroid/app/Notification;
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dts/dtssdk/util/g;->b:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Lcom/dts/dtssdk/util/h;
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dts/dtssdk/util/g;->c:Lcom/dts/dtssdk/util/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
