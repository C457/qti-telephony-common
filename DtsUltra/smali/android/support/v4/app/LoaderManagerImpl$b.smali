.class final Landroid/support/v4/app/LoaderManagerImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/k",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/b",
            "<TD;>;"
        }
    .end annotation
.end field

.field b:Z

.field private final c:Landroid/support/v4/app/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/s$a",
            "<TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  onLoadFinished in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$b;->a:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v4/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$b;->b:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$b;->c:Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
