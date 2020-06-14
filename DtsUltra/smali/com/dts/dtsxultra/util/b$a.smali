.class public final enum Lcom/dts/dtsxultra/util/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtsxultra/util/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtsxultra/util/b$a;

.field public static final enum b:Lcom/dts/dtsxultra/util/b$a;

.field private static final synthetic d:[Lcom/dts/dtsxultra/util/b$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtsxultra/util/b$a;

    const-string v1, "SERVICE_USES_APP_NOTIFICATION"

    const-string v2, "service_uses_app_notification"

    invoke-direct {v0, v1, v3, v2}, Lcom/dts/dtsxultra/util/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dts/dtsxultra/util/b$a;->a:Lcom/dts/dtsxultra/util/b$a;

    new-instance v0, Lcom/dts/dtsxultra/util/b$a;

    const-string v1, "SERVICE_USES_DUMMY_NOTIFICATION"

    const-string v2, "service_uses_dummy_notification"

    invoke-direct {v0, v1, v4, v2}, Lcom/dts/dtsxultra/util/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dts/dtsxultra/util/b$a;->b:Lcom/dts/dtsxultra/util/b$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dts/dtsxultra/util/b$a;

    sget-object v1, Lcom/dts/dtsxultra/util/b$a;->a:Lcom/dts/dtsxultra/util/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtsxultra/util/b$a;->b:Lcom/dts/dtsxultra/util/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dts/dtsxultra/util/b$a;->d:[Lcom/dts/dtsxultra/util/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dts/dtsxultra/util/b$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtsxultra/util/b$a;
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/util/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/util/b$a;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtsxultra/util/b$a;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/util/b$a;->d:[Lcom/dts/dtsxultra/util/b$a;

    invoke-virtual {v0}, [Lcom/dts/dtsxultra/util/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtsxultra/util/b$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/b$a;->c:Ljava/lang/String;

    return-object v0
.end method
