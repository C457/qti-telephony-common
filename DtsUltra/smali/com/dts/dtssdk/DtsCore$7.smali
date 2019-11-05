.class final Lcom/dts/dtssdk/DtsCore$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/util/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/DtsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dts/dtssdk/DtsCore;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$7;->b:Lcom/dts/dtssdk/DtsCore;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/util/a;)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$7;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V

    return-void
.end method
