.class final Lcom/dts/dtsxultra/b/g$2;
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
.field final synthetic a:Lcom/dts/dtsxultra/b/g;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/g$2;->a:Lcom/dts/dtsxultra/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
