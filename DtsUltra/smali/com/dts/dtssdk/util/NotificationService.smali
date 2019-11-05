.class public Lcom/dts/dtssdk/util/NotificationService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/dts/dtssdk/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/util/NotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/util/NotificationService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/util/NotificationService;Lcom/dts/dtssdk/util/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAudioRouteChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "audioRoute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/dts/dtssdk/util/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/dts/dtssdk/util/NotificationService$1;-><init>(Lcom/dts/dtssdk/util/NotificationService;)V

    iput-object v0, p0, Lcom/dts/dtssdk/util/NotificationService;->c:Lcom/dts/dtssdk/util/b;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/dts/dtssdk/util/g;->c()Lcom/dts/dtssdk/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dts/dtssdk/util/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/dts/dtssdk/util/g;->a()I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/util/g;->b()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtssdk/util/NotificationService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtssdk/util/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/util/c;->a(Landroid/content/Context;)Lcom/dts/dtssdk/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/util/NotificationService;->c:Lcom/dts/dtssdk/util/b;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/util/c;->a(Lcom/dts/dtssdk/util/b;)V

    iget-boolean v0, p0, Lcom/dts/dtssdk/util/NotificationService;->b:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/dts/dtssdk/util/NotificationService;->b:Z

    invoke-static {}, Lcom/dts/dtssdk/util/g;->c()Lcom/dts/dtssdk/util/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/dts/dtssdk/util/h;->a(Z)V

    :cond_1
    return v2
.end method
