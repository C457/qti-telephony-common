.class Lcom/dts/dtssdk/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/dts/dtssdk/h;->b:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/h;->a:Ljava/lang/String;

    const-string v1, "Cannot save broadcast state change state with null context. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/h;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DTS_SDK_STATE_NOTIFIER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "broadcastStateChange"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-object v1, Lcom/dts/dtssdk/h;->a:Ljava/lang/String;

    const-string v2, "Cannot get broadcast state change state with null context. Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.status.DTS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "dtsState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/dts/dtssdk/h;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DTS_SDK_STATE_NOTIFIER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "broadcastStateChange"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/h;->b:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
