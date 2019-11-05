.class public final enum Lcom/dts/dtssdk/m$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/m$a;

.field public static final enum b:Lcom/dts/dtssdk/m$a;

.field public static final enum c:Lcom/dts/dtssdk/m$a;

.field public static final enum d:Lcom/dts/dtssdk/m$a;

.field public static final enum e:Lcom/dts/dtssdk/m$a;

.field public static final enum f:Lcom/dts/dtssdk/m$a;

.field public static final enum g:Lcom/dts/dtssdk/m$a;

.field public static final enum h:Lcom/dts/dtssdk/m$a;

.field public static final enum i:Lcom/dts/dtssdk/m$a;

.field private static final synthetic j:[Lcom/dts/dtssdk/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_ACCESSORY_DTSCS"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->a:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_ACCESSORY_DEFAULT_TUNING"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->b:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_SPEAKER_MODE_DEFAULT_TUNING"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->c:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_SPEAKER_MODE_DTSCS"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->d:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_MULTI_CHANNEL_ROOM_DTSCS"

    invoke-direct {v0, v1, v7}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->e:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_STEREO_ROOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->f:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "DECRYPT_DTSCS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->g:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "SET_SPEAKER_MODE_DEVICE_TUNING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->h:Lcom/dts/dtssdk/m$a;

    new-instance v0, Lcom/dts/dtssdk/m$a;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/m$a;->i:Lcom/dts/dtssdk/m$a;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dts/dtssdk/m$a;

    sget-object v1, Lcom/dts/dtssdk/m$a;->a:Lcom/dts/dtssdk/m$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/m$a;->b:Lcom/dts/dtssdk/m$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/m$a;->c:Lcom/dts/dtssdk/m$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/m$a;->d:Lcom/dts/dtssdk/m$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dts/dtssdk/m$a;->e:Lcom/dts/dtssdk/m$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dts/dtssdk/m$a;->f:Lcom/dts/dtssdk/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dts/dtssdk/m$a;->g:Lcom/dts/dtssdk/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dts/dtssdk/m$a;->h:Lcom/dts/dtssdk/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dts/dtssdk/m$a;->i:Lcom/dts/dtssdk/m$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dts/dtssdk/m$a;->j:[Lcom/dts/dtssdk/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/m$a;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/m$a;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/m$a;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/m$a;->j:[Lcom/dts/dtssdk/m$a;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/m$a;

    return-object v0
.end method
