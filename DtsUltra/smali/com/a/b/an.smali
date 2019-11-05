.class public Lcom/a/b/an;
.super Lcom/a/b/ch;

# interfaces
.implements Lcom/a/b/cy$a;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/an;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/b/an;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 5

    const/4 v4, 0x4

    const-string v0, "Analytics"

    const-class v1, Lcom/a/b/an;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/a/b/an;->b:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v1

    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/an;->g:Z

    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/a/b/cy;->a(Ljava/lang/String;Lcom/a/b/cy$a;)V

    sget-object v0, Lcom/a/b/an;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, UseHttps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/a/b/an;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/a/b/cy;->a(Ljava/lang/String;Lcom/a/b/cy$a;)V

    invoke-direct {p0, v0}, Lcom/a/b/an;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/a/b/an;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/an;->b()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/b/an;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/an;)V
    .locals 0

    invoke-virtual {p0}, Lcom/a/b/ch;->b()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/an;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/a/b/ch$8;

    invoke-direct {v0, p0, p1}, Lcom/a/b/ch$8;-><init>(Lcom/a/b/ch;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/a/b/an;->e:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/a/b/an;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    sget-object v1, Lcom/a/b/an;->e:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v1, "UseHttps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ReportUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/an;->g:Z

    sget-object v0, Lcom/a/b/an;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/a/b/an;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/a/b/an;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/a/b/an;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0xe48ec3c -> :sswitch_0
        0x62629b7b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/a/b/an$2;

    invoke-direct {v0, p0, p3}, Lcom/a/b/an$2;-><init>(Lcom/a/b/an;I)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3}, Lcom/a/b/ch;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/a/b/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/an;->f:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/a/b/an;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/a/b/cb;

    invoke-direct {v1}, Lcom/a/b/cb;-><init>()V

    iput-object v0, v1, Lcom/a/b/cd;->g:Ljava/lang/String;

    const v0, 0x186a0

    iput v0, v1, Lcom/a/b/dg;->u:I

    sget-object v0, Lcom/a/b/cd$a;->c:Lcom/a/b/cd$a;

    iput-object v0, v1, Lcom/a/b/cd;->h:Lcom/a/b/cd$a;

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/b/cl;

    invoke-direct {v0}, Lcom/a/b/cl;-><init>()V

    iput-object v0, v1, Lcom/a/b/cb;->c:Lcom/a/b/cp;

    iput-object p1, v1, Lcom/a/b/cb;->b:Ljava/lang/Object;

    new-instance v0, Lcom/a/b/an$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/a/b/an$1;-><init>(Lcom/a/b/an;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/a/b/bf;->a(Ljava/lang/Object;Lcom/a/b/dg;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/a/b/an;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "https://data.flurry.com/aap.do"

    goto :goto_0

    :cond_1
    const-string v0, "http://data.flurry.com/aap.do"

    goto :goto_0
.end method
