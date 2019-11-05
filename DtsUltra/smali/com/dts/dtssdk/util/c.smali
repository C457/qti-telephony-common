.class public Lcom/dts/dtssdk/util/c;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lcom/dts/dtssdk/util/c;

.field private static final g:Lcom/dts/dtssdk/util/a;


# instance fields
.field a:Ljava/lang/Object;

.field b:Lcom/dts/dtssdk/util/b;

.field c:Landroid/media/AudioDeviceCallback;

.field d:Landroid/media/MediaRouter$Callback;

.field private h:Lcom/dts/dtssdk/util/a;

.field private i:Landroid/media/MediaRouter;

.field private j:Landroid/media/AudioManager;

.field private k:Landroid/content/Context;

.field private l:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/util/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    sput-object v0, Lcom/dts/dtssdk/util/c;->g:Lcom/dts/dtssdk/util/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtssdk/util/c;->h:Lcom/dts/dtssdk/util/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/util/c;->a:Ljava/lang/Object;

    new-instance v0, Lcom/dts/dtssdk/util/c$1;

    invoke-direct {v0, p0}, Lcom/dts/dtssdk/util/c$1;-><init>(Lcom/dts/dtssdk/util/c;)V

    iput-object v0, p0, Lcom/dts/dtssdk/util/c;->c:Landroid/media/AudioDeviceCallback;

    new-instance v0, Lcom/dts/dtssdk/util/c$2;

    invoke-direct {v0, p0}, Lcom/dts/dtssdk/util/c$2;-><init>(Lcom/dts/dtssdk/util/c;)V

    iput-object v0, p0, Lcom/dts/dtssdk/util/c;->d:Landroid/media/MediaRouter$Callback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRouteObserver2 constructor context : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/dts/dtssdk/util/a;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/util/c;->f:Lcom/dts/dtssdk/util/c;

    iget-object v0, v0, Lcom/dts/dtssdk/util/c;->h:Lcom/dts/dtssdk/util/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dts/dtssdk/util/c;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInstance mContext : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/dts/dtssdk/util/c;->f:Lcom/dts/dtssdk/util/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/util/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/util/c;->f:Lcom/dts/dtssdk/util/c;

    if-nez v0, :cond_0

    new-instance v2, Lcom/dts/dtssdk/util/c;

    invoke-direct {v2, p0}, Lcom/dts/dtssdk/util/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/dts/dtssdk/util/c;->f:Lcom/dts/dtssdk/util/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "registerAudioRouteListner mContext : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v2, Lcom/dts/dtssdk/util/c;->j:Landroid/media/AudioManager;

    iget-object v0, v2, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "media_router"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, v2, Lcom/dts/dtssdk/util/c;->i:Landroid/media/MediaRouter;

    iget-object v0, v2, Lcom/dts/dtssdk/util/c;->j:Landroid/media/AudioManager;

    iget-object v3, v2, Lcom/dts/dtssdk/util/c;->c:Landroid/media/AudioDeviceCallback;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v0, v2, Lcom/dts/dtssdk/util/c;->i:Landroid/media/MediaRouter;

    const/4 v3, 0x1

    iget-object v2, v2, Lcom/dts/dtssdk/util/c;->d:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/util/c;->f:Lcom/dts/dtssdk/util/c;

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/dts/dtssdk/util/c;->e:Ljava/lang/String;

    const-string v2, "Context is null. Cannot register audio route listener (Audio_Service, Media_Router_Service) "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/util/c;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtssdk/util/c;->j:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/util/c;->i:Landroid/media/MediaRouter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/util/c;->a([Landroid/media/AudioDeviceInfo;Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/util/c;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshAudioRoute 2 info : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtssdk/util/c;->j:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dts/dtssdk/util/c;->a([Landroid/media/AudioDeviceInfo;Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method private a([Landroid/media/AudioDeviceInfo;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v5, p1

    move v4, v0

    move v2, v0

    move v3, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/dts/dtssdk/util/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/dts/dtssdk/util/c;->l:Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "bluetooth_a2dp_audio_route_name"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Description: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshAudioRoute 3, onEvent route : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviousAudioRoute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtssdk/util/c;->h:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dts/dtssdk/util/c;->h:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/util/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lcom/dts/dtssdk/util/c;->h:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtssdk/util/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/dts/dtssdk/util/c;->b:Lcom/dts/dtssdk/util/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dts/dtssdk/util/c;->b:Lcom/dts/dtssdk/util/b;

    invoke-interface {v2, v0}, Lcom/dts/dtssdk/util/b;->a(Lcom/dts/dtssdk/util/a;)V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_6

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/util/c;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/util/b;)V
    .locals 2

    iget-object v1, p0, Lcom/dts/dtssdk/util/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/dts/dtssdk/util/c;->b:Lcom/dts/dtssdk/util/b;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
