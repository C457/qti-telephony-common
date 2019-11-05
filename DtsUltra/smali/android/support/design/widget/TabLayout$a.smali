.class final Landroid/support/design/widget/TabLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/h/t$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$a;->b:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/h/t;Landroid/support/v4/h/o;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$a;->b:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$a;->b:Landroid/support/design/widget/TabLayout;

    iget-boolean v1, p0, Landroid/support/design/widget/TabLayout$a;->a:Z

    invoke-virtual {v0, p2, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/o;Z)V

    :cond_0
    return-void
.end method
