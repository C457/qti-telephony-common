.class final Landroid/support/d/p$a;
.super Landroid/support/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/d/p;


# direct methods
.method constructor <init>(Landroid/support/d/p;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/d/m;-><init>()V

    iput-object p1, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/d/l;)V
    .locals 2

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    iget v1, v0, Landroid/support/d/p;->p:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/d/p;->p:I

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    iget v0, v0, Landroid/support/d/p;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/d/p;->q:Z

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    invoke-virtual {v0}, Landroid/support/d/p;->d()V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    iget-boolean v0, v0, Landroid/support/d/p;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    invoke-virtual {v0}, Landroid/support/d/p;->c()V

    iget-object v0, p0, Landroid/support/d/p$a;->a:Landroid/support/d/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/d/p;->q:Z

    :cond_0
    return-void
.end method
