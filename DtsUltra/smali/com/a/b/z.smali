.class public Lcom/a/b/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/z$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/a/b/aa;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/a/b/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/z;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/y;JJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/b/z;->k:J

    iput-object p1, p0, Lcom/a/b/z;->l:Lcom/a/b/y;

    iput-wide p2, p0, Lcom/a/b/z;->b:J

    iput-wide p4, p0, Lcom/a/b/z;->c:J

    iput p6, p0, Lcom/a/b/z;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/z;->e:I

    sget-object v0, Lcom/a/b/aa;->d:Lcom/a/b/aa;

    iput-object v0, p0, Lcom/a/b/z;->f:Lcom/a/b/aa;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/z;->l:Lcom/a/b/y;

    iget-object v0, v0, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/a/b/z;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/z;->l:Lcom/a/b/y;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/b/y;->m:Z

    :cond_0
    return-void
.end method
