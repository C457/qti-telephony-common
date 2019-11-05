.class final Lcom/dts/dtsxultra/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/a/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/a/a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/a/a$1;->a:Lcom/dts/dtsxultra/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a$1;->a:Lcom/dts/dtsxultra/a/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/a/a;->dismiss()V

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a$1;->a:Lcom/dts/dtsxultra/a/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/a/a;->a(Lcom/dts/dtsxultra/a/a;)Lcom/dts/dtsxultra/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a$1;->a:Lcom/dts/dtsxultra/a/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/a/a;->a(Lcom/dts/dtsxultra/a/a;)Lcom/dts/dtsxultra/a/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dts/dtsxultra/a/a$a;->a()V

    :cond_0
    return-void
.end method
