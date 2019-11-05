.class final Landroid/support/design/widget/c$b;
.super Landroid/support/design/widget/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/c$b;->a:Landroid/support/design/widget/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/c$f;-><init>(Landroid/support/design/widget/c;B)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/c$b;->a:Landroid/support/design/widget/c;

    iget v0, v0, Landroid/support/design/widget/c;->n:F

    iget-object v1, p0, Landroid/support/design/widget/c$b;->a:Landroid/support/design/widget/c;

    iget v1, v1, Landroid/support/design/widget/c;->o:F

    add-float/2addr v0, v1

    return v0
.end method
