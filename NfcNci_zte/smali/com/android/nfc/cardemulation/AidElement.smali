.class public Lcom/android/nfc/cardemulation/AidElement;
.super Ljava/lang/Object;
.source "AidElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final ROUTE_WIEGHT_FOREGROUND:I = 0x4

.field static final ROUTE_WIEGHT_OTHER:I = 0x1

.field static final ROUTE_WIEGHT_PAYMENT:I = 0x2


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAidInfo:I

.field private mPowerState:I

.field private mRouteLocation:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I
    .param p5, "aidInfo"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    .line 39
    iput p3, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 40
    iput p4, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 41
    iput p5, p0, Lcom/android/nfc/cardemulation/AidElement;->mAidInfo:I

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 80
    .local v0, "elem":Lcom/android/nfc/cardemulation/AidElement;
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 81
    const/4 v1, -0x1

    return v1

    .line 83
    :cond_0
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAidInfo()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mAidInfo:I

    return v0
.end method

.method public getPowerState()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    return v0
.end method

.method public getRouteLocation()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    return v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPowerState(I)V
    .locals 0
    .param p1, "powerState"    # I

    .line 60
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 61
    return-void
.end method

.method public setRouteLocation(I)V
    .locals 0
    .param p1, "routeLocation"    # I

    .line 49
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
