.class final Lcom/dts/dtsxultra/b/o$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/e;->f(Landroid/content/Context;Z)V

    return-void
.end method
