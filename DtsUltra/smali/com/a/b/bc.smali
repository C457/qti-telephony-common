.class public final enum Lcom/a/b/bc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/b/bc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/b/bc;

.field public static final enum b:Lcom/a/b/bc;

.field private static final synthetic e:[Lcom/a/b/bc;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/b/bc;

    const-string v1, "DeviceId"

    invoke-direct {v0, v1, v3, v3}, Lcom/a/b/bc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/bc;->a:Lcom/a/b/bc;

    new-instance v0, Lcom/a/b/bc;

    const-string v1, "AndroidAdvertisingId"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/a/b/bc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/b/bc;->b:Lcom/a/b/bc;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/b/bc;

    sget-object v1, Lcom/a/b/bc;->a:Lcom/a/b/bc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/bc;->b:Lcom/a/b/bc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/b/bc;->e:[Lcom/a/b/bc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/a/b/bc;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/bc;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/bc;
    .locals 1

    const-class v0, Lcom/a/b/bc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/bc;

    return-object v0
.end method

.method public static values()[Lcom/a/b/bc;
    .locals 1

    sget-object v0, Lcom/a/b/bc;->e:[Lcom/a/b/bc;

    invoke-virtual {v0}, [Lcom/a/b/bc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/b/bc;

    return-object v0
.end method
