.class final enum Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;
.super Ljava/lang/Enum;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DdsSwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

.field public static final enum DONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

.field public static final enum NONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

.field public static final enum REQUIRED:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 114
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->NONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    const/4 v2, 0x1

    const-string v3, "REQUIRED"

    invoke-direct {v0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->REQUIRED:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->DONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->NONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->REQUIRED:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->DONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 113
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;
    .locals 1

    .line 113
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    return-object v0
.end method
