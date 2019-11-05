.class public final Lcom/dts/dtssdk/a/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/dts/dtssdk/a/f$e;

.field public b:Lcom/dts/dtssdk/a/f$c;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dts/dtssdk/a/f$d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/dts/dtssdk/a/f;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/f;Lcom/dts/dtssdk/a/f$e;Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/a/f$e;",
            "Lcom/dts/dtssdk/a/f$c;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dts/dtssdk/a/f$d;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/f$b;->d:Lcom/dts/dtssdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dts/dtssdk/a/f$b;->a:Lcom/dts/dtssdk/a/f$e;

    if-nez p3, :cond_0

    sget-object p3, Lcom/dts/dtssdk/a/f$c;->k:Lcom/dts/dtssdk/a/f$c;

    :cond_0
    iput-object p3, p0, Lcom/dts/dtssdk/a/f$b;->b:Lcom/dts/dtssdk/a/f$c;

    iput-object p4, p0, Lcom/dts/dtssdk/a/f$b;->c:Ljava/util/HashMap;

    return-void
.end method
