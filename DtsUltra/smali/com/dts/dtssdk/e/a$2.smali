.class final Lcom/dts/dtssdk/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/e/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dts/dtssdk/e/a;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/e/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/e/a$2;->b:Lcom/dts/dtssdk/e/a;

    iput-object p2, p0, Lcom/dts/dtssdk/e/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/e/a$2;->b:Lcom/dts/dtssdk/e/a;

    iget-object v1, p0, Lcom/dts/dtssdk/e/a$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    return-void
.end method
