.class final Lcom/dts/dtsxultra/b/f$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/f$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/f$1;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/f$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/f$1$1;->a:Lcom/dts/dtsxultra/b/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/dts/dtsxultra/b/f;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f$1$1;->a:Lcom/dts/dtsxultra/b/f$1;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/f$1;->a:Lcom/dts/dtsxultra/b/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/f;->a(Lcom/dts/dtsxultra/b/f;)V

    return-void
.end method
