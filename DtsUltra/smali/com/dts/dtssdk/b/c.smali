.class public Lcom/dts/dtssdk/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/b/c$a;,
        Lcom/dts/dtssdk/b/c$d;,
        Lcom/dts/dtssdk/b/c$b;,
        Lcom/dts/dtssdk/b/c$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/dts/dtssdk/b/c;

.field private static d:Lcom/dts/dtssdk/b/b;


# instance fields
.field public b:Lcom/dts/dtssdk/b/c$a;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/b/a;

    invoke-direct {v0}, Lcom/dts/dtssdk/b/a;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/b/c;->d:Lcom/dts/dtssdk/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dts/dtssdk/b/c$a;

    invoke-direct {v0, p0}, Lcom/dts/dtssdk/b/c$a;-><init>(Lcom/dts/dtssdk/b/c;)V

    iput-object v0, p0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    return-void
.end method

.method public static a()Lcom/dts/dtssdk/b/c;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/b/c;->c:Lcom/dts/dtssdk/b/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/b/c;->c:Lcom/dts/dtssdk/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/b/c;

    invoke-direct {v0}, Lcom/dts/dtssdk/b/c;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/b/c;->c:Lcom/dts/dtssdk/b/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/b/c;->c:Lcom/dts/dtssdk/b/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/dts/dtssdk/a/f$c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR_DATASTORE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/b/c;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/b/c;->b([I)V

    return-void
.end method

.method public static b(Lcom/dts/dtssdk/a/f$c;)Lcom/dts/dtssdk/b/c$b;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/b/c$1;->a:[I

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/f$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/b/c$b;->e:Lcom/dts/dtssdk/b/c$b;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->a:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->a:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->a:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->b:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->b:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->c:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->c:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->c:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->c:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/dts/dtssdk/b/c$b;->c:Lcom/dts/dtssdk/b/c$b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b([I)V
    .locals 6

    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget v3, p1, v1

    const/16 v4, -0x64

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->s:Lcom/dts/dtssdk/b/c$d;

    :goto_1
    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->i:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->j:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->k:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->l:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->m:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->n:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->o:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->p:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_8
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->q:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :pswitch_9
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->r:Lcom/dts/dtssdk/b/c$d;

    goto :goto_1

    :cond_1
    const-string v1, "GEQ_BAND_VALUES"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$c;->h:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic c()Lcom/dts/dtssdk/b/c;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/b/c;->c:Lcom/dts/dtssdk/b/c;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtssdk/b/c;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "loadEnabledStateFromPreferences() called without initialization! Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    const-string v1, "DtsSdkMetricsPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DtsSdkMetricsEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtssdk/b/c;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/dts/dtssdk/b/c;->i:Z

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/dts/dtssdk/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->e()V

    sget-object v0, Lcom/dts/dtssdk/b/c;->d:Lcom/dts/dtssdk/b/b;

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtssdk/b/c;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/dts/dtssdk/b/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/dts/dtssdk/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->e()V

    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b/c;->d:Lcom/dts/dtssdk/b/b;

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtssdk/b/c;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/dts/dtssdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/dts/dtssdk/a/f$b;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logRecoveryDatabase(): AccessoryDatastoreIntegrityReport.ComponentRecovery cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/dts/dtssdk/a/f$b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/f$d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->D:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/a/f$b;->b:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/f$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/dts/dtssdk/a/f$b;->a:Lcom/dts/dtssdk/a/f$e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ERROR_DATASTORE_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtssdk/b/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/b/c$c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logEvent() called without initialization! Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/b/c$d;->A:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->C:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->B:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELEASE"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "[EVENT-PARAMETERS] "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/b/c;->d:Lcom/dts/dtssdk/b/b;

    invoke-virtual {p1}, Lcom/dts/dtssdk/b/c$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dts/dtssdk/b/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/dts/dtssdk/m;)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/dts/dtssdk/b/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/dts/dtssdk/b/e;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/m$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtssdk/b/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logError() called without initialization! Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dts/dtssdk/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->A:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->C:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->B:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELEASE"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "[EVENT-PARAMETERS] "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/b/c;->d:Lcom/dts/dtssdk/b/b;

    invoke-interface {v0, p1, p2}, Lcom/dts/dtssdk/b/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a([I)V
    .locals 3

    if-nez p1, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logGEQSetting(): gains parameter cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    iget-object v1, v1, Lcom/dts/dtssdk/b/c$a;->b:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown GEQ size. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Aborting GEQ settings log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    aget v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtssdk/b/c$a;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/dts/dtssdk/b/c;->b([I)V

    goto :goto_0
.end method
