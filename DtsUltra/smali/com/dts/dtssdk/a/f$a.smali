.class public final Lcom/dts/dtssdk/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/dts/dtssdk/a/f$c;

.field public b:Ljava/util/HashMap;
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

.field final synthetic c:Lcom/dts/dtssdk/a/f;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/f;Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/a/f$c;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dts/dtssdk/a/f$d;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/f$a;->c:Lcom/dts/dtssdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    iput-object p3, p0, Lcom/dts/dtssdk/a/f$a;->b:Ljava/util/HashMap;

    return-void
.end method
