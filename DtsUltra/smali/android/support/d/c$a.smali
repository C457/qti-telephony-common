.class final Landroid/support/d/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/d/c$a;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/d/c$a;->g:Landroid/view/View;

    iget v1, p0, Landroid/support/d/c$a;->a:I

    iget v2, p0, Landroid/support/d/c$a;->b:I

    iget v3, p0, Landroid/support/d/c$a;->c:I

    iget v4, p0, Landroid/support/d/c$a;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/d/ac;->a(Landroid/view/View;IIII)V

    iput v5, p0, Landroid/support/d/c$a;->e:I

    iput v5, p0, Landroid/support/d/c$a;->f:I

    return-void
.end method
