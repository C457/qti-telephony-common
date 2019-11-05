.class public final Landroid/support/design/widget/TabLayout$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:I

.field f:Landroid/view/View;

.field public g:Landroid/support/design/widget/TabLayout;

.field public h:Landroid/support/design/widget/TabLayout$h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->b()V

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->b()V

    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$f;)V

    return-void
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->a()V

    :cond_0
    return-void
.end method
