.class final Landroid/support/v4/app/k$i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroid/support/v4/app/b;

.field c:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/app/k$i;->a:Z

    iput-object p1, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/k$i;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/k$i;->c:I

    iget v0, p0, Landroid/support/v4/app/k$i;->c:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-object v0, v0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->h()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/k$i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/k$i;->c:I

    return-void
.end method

.method public final c()V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/app/k$i;->c:I

    if-lez v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-object v5, v0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget-object v0, v5, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_5

    iget-object v0, v5, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/e;->a(Landroid/support/v4/app/e$c;)V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/e;->P()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v7, v7, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    if-nez v7, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-boolean v3, v0, Landroid/support/v4/app/e$a;->q:Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v8, v8, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    iget-object v8, v8, Landroid/support/v4/app/i;->d:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_4

    iget-object v7, v0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v7, v7, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    iget-object v7, v7, Landroid/support/v4/app/i;->d:Landroid/os/Handler;

    new-instance v8, Landroid/support/v4/app/e$1;

    invoke-direct {v8, v0}, Landroid/support/v4/app/e$1;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/e;->D()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-object v0, v0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget-object v4, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-boolean v5, p0, Landroid/support/v4/app/k$i;->a:Z

    if-nez v1, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/b;ZZZ)V

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-object v0, v0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/k$i;->b:Landroid/support/v4/app/b;

    iget-boolean v2, p0, Landroid/support/v4/app/k$i;->a:Z

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/b;ZZZ)V

    return-void
.end method
