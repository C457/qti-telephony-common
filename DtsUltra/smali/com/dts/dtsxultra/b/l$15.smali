.class final Lcom/dts/dtsxultra/b/l$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v2}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dts/dtsxultra/b/l$15$1;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/l$15$1;-><init>(Lcom/dts/dtsxultra/b/l$15;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dts/dtsxultra/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v1

    const-class v2, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
