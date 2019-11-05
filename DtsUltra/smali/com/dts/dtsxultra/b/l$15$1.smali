.class final Lcom/dts/dtsxultra/b/l$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/l$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l$15;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l$15;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$15$1;->a:Lcom/dts/dtsxultra/b/l$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$15$1;->a:Lcom/dts/dtsxultra/b/l$15;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v1

    const-class v2, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$15$1;->a:Lcom/dts/dtsxultra/b/l$15;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/l$15;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/f;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
