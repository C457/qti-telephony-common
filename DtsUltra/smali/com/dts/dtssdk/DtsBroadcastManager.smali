.class public Lcom/dts/dtssdk/DtsBroadcastManager;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/DtsBroadcastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.status.SET_DTS_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "resultCode"

    iget-object v2, p2, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2}, Lcom/dts/dtssdk/f/a$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    sget-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->a:Ljava/lang/String;

    const-string v3, "Cannot get broadcast API state with null context. Returning false"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "DTS_SDK_BROADCAST_RECEIVER"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "broadcastApi"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->b:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/DtsBroadcastManager;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "requestId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    const-string v4, "dts.dtssdk.intent.action.SET_DTS_ENABLED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V

    goto :goto_1

    :cond_4
    const-string v4, "dts.dtssdk.intent.action.SET_DTS_DISABLED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V

    goto :goto_1

    :cond_5
    const-string v0, "dts.dtssdk.intent.action.GET_DTS_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "dts.dtssdk.intent.status.GET_DTS_RESULT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    const-string v0, "requestId"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string v3, "dtsState"

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "resultCode"

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1}, Lcom/dts/dtssdk/f/a$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "dts.dtssdk.intent.action.GET_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.status.GET_SDK_INFO_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    const-string v1, "requestId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string v1, "sdkVersion"

    const-string v2, "2.0.3.56"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.status.UNSUPPORTED_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_a

    const-string v1, "requestId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-static {p1, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
