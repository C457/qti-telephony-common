.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$a;,
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field protected b:Landroid/arch/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b",
            "<",
            "Landroid/arch/lifecycle/k",
            "<TT;>;",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.a;>;"
        }
    .end annotation
.end field

.field public c:I

.field public volatile d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->e:Ljava/lang/Object;

    new-instance v0, Landroid/arch/a/b/b;

    invoke-direct {v0}, Landroid/arch/a/b/b;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->b:Landroid/arch/a/b/b;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->c:I

    sget-object v0, Landroid/arch/lifecycle/LiveData;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->d:Ljava/lang/Object;

    sget-object v0, Landroid/arch/lifecycle/LiveData;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->g:I

    new-instance v0, Landroid/arch/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$1;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;I)I
    .locals 0

    iput p1, p0, Landroid/arch/lifecycle/LiveData;->c:I

    return p1
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Landroid/arch/lifecycle/LiveData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.a;)V"
        }
    .end annotation

    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$a;->a(Z)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/arch/lifecycle/LiveData$a;->e:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->g:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->g:I

    iput v0, p1, Landroid/arch/lifecycle/LiveData$a;->e:I

    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$a;->c:Landroid/arch/lifecycle/k;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/arch/lifecycle/k;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->b(Landroid/arch/lifecycle/LiveData$a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    iget-object v0, v0, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/c;

    invoke-virtual {v0}, Landroid/arch/a/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on a background thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Landroid/arch/lifecycle/LiveData$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.a;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->h:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->i:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->h:Z

    :cond_1
    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->i:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData$a;)V

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->i:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->h:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->b:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->a()Landroid/arch/a/b/b$d;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData$a;)V

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->i:Z

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method static synthetic c(Landroid/arch/lifecycle/LiveData;)I
    .locals 1

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->c:I

    return v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/LiveData;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/arch/lifecycle/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k",
            "<TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->b:Landroid/arch/a/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData$a;->b()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData$a;->a(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->g:I

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->b(Landroid/arch/lifecycle/LiveData$a;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
