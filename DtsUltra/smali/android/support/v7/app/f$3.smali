.class final Landroid/support/v7/app/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/h/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$3;->a:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/h/z;)Landroid/support/v4/h/z;
    .locals 6

    invoke-virtual {p2}, Landroid/support/v4/h/z;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/f$3;->a:Landroid/support/v7/app/f;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/f;->g(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/h/z;->a()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v4/h/z;->c()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v4/h/z;->d()I

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/h/z;

    iget-object v0, p2, Landroid/support/v4/h/z;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/h/z;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/z;)Landroid/support/v4/h/z;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method
