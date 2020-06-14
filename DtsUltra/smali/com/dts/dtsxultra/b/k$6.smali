.class final Lcom/dts/dtsxultra/b/k$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/k;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$6;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k$6;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/k;->ac:Landroid/support/v4/app/f;

    const-class v2, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k$6;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v2, v1, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/i;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$6;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->finish()V

    return-void
.end method
