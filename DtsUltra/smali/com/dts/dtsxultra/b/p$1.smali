.class final Lcom/dts/dtsxultra/b/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/p;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/p;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/p$1;->a:Lcom/dts/dtsxultra/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/p$1;->a:Lcom/dts/dtsxultra/b/p;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/p;->ac:Landroid/support/v4/app/f;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/p$1;->a:Lcom/dts/dtsxultra/b/p;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/p;->a(Lcom/dts/dtsxultra/b/p;)V

    return-void
.end method
