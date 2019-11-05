.class final Landroid/support/v7/widget/an$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/an;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/an;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    iget-object v0, p0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/widget/an;->drawableStateChanged()V

    return-void
.end method
