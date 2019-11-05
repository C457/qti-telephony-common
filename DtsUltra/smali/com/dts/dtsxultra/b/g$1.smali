.class final Lcom/dts/dtsxultra/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/c/b;

.field final synthetic b:Lcom/dts/dtsxultra/b/g;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtsxultra/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/g$1;->b:Lcom/dts/dtsxultra/b/g;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/g$1;->a:Lcom/dts/dtsxultra/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/g$1;->a:Lcom/dts/dtsxultra/c/b;

    invoke-interface {v0}, Lcom/dts/dtsxultra/c/b;->a()V

    return-void
.end method
