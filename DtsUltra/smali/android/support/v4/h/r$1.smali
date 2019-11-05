.class final Landroid/support/v4/h/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/n;


# direct methods
.method constructor <init>(Landroid/support/v4/h/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/r$1;->a:Landroid/support/v4/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {p2}, Landroid/support/v4/h/z;->a(Ljava/lang/Object;)Landroid/support/v4/h/z;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/h/r$1;->a:Landroid/support/v4/h/n;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/h/n;->a(Landroid/view/View;Landroid/support/v4/h/z;)Landroid/support/v4/h/z;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/z;->a(Landroid/support/v4/h/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
