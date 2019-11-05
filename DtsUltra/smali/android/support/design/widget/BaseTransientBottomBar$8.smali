.class final Landroid/support/design/widget/BaseTransientBottomBar$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$8;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$8;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/j;->c(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->a:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$8$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$8$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
