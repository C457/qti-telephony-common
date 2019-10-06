.class public Lcom/qti/geofence/GeofenceData;
.super Ljava/lang/Object;
.source "GeofenceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/geofence/GeofenceData$DwellTypes;,
        Lcom/qti/geofence/GeofenceData$GeofenceConfidence;,
        Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_IS_SET:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DWELL_NOTIFY_IS_SET:I = 0x20

.field public static final LATITUDE_IS_SET:I = 0x1

.field public static final LONGITUDE_IS_SET:I = 0x2

.field public static final RADIUS_IS_SET:I = 0x4

.field public static final RESPONSIVENESS_IS_SET:I = 0x40

.field private static TAG:Ljava/lang/String; = null

.field public static final TRANSITION_TYPES_IS_SET:I = 0x8

.field private static final VERBOSE:Z


# instance fields
.field private mAppBundleData:Landroid/os/Bundle;

.field private mAppTextData:Ljava/lang/String;

.field private mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

.field private mDwellTime:I

.field private mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

.field private mGeofenceId:I

.field private mIsPaused:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mNotifyResponsiveness:I

.field private mRadius:D

.field private mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "GeofenceData"

    sput-object v0, Lcom/qti/geofence/GeofenceData;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/qti/geofence/GeofenceData;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/geofence/GeofenceData;->VERBOSE:Z

    .line 260
    new-instance v0, Lcom/qti/geofence/GeofenceData$1;

    invoke-direct {v0}, Lcom/qti/geofence/GeofenceData$1;-><init>()V

    sput-object v0, Lcom/qti/geofence/GeofenceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDDIIIILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "notifyResponsiveness"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "transitionType"    # I
    .param p9, "confidence"    # I
    .param p10, "dwellType"    # I
    .param p11, "dwellTime"    # I
    .param p12, "appTextData"    # Ljava/lang/String;
    .param p13, "appBundleData"    # Landroid/os/Bundle;
    .param p14, "geofenceId"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    .line 106
    iput-wide p2, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    .line 107
    iput-wide p4, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    .line 108
    iput-wide p6, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    .line 109
    invoke-virtual {p0, p8}, Lcom/qti/geofence/GeofenceData;->setTransitionType(I)V

    .line 110
    invoke-virtual {p0, p9}, Lcom/qti/geofence/GeofenceData;->setConfidence(I)V

    .line 111
    invoke-virtual {p0, p10}, Lcom/qti/geofence/GeofenceData;->setDwellType(I)V

    .line 112
    iput p11, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    .line 113
    iput-object p12, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    .line 114
    iput-object p13, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    .line 115
    iput p14, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    .line 71
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "x":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    .line 77
    .end local v1    # "x":Ljava/lang/IllegalArgumentException;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    goto :goto_1

    .line 78
    :catch_1
    move-exception v1

    .line 79
    .restart local v1    # "x":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    .line 83
    .end local v1    # "x":Ljava/lang/IllegalArgumentException;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$DwellTypes;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$DwellTypes;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    goto :goto_2

    .line 84
    :catch_2
    move-exception v1

    .line 85
    .restart local v1    # "x":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 87
    .end local v1    # "x":Ljava/lang/IllegalArgumentException;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    .line 90
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 93
    goto :goto_3

    .line 91
    :catch_3
    move-exception v1

    .line 92
    .restart local v1    # "x":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    .line 95
    .end local v1    # "x":Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAppBundleData()Landroid/os/Bundle;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAppTextData()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    return-object v0
.end method

.method public getDwellTime()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    return v0
.end method

.method public getDwellType()Lcom/qti/geofence/GeofenceData$DwellTypes;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    return-object v0
.end method

.method public getGeofenceId()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    return-wide v0
.end method

.method public getNotifyResponsiveness()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    return-wide v0
.end method

.method public getTransitionType()Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    return v0
.end method

.method public setConfidence(I)V
    .locals 5
    .param p1, "confidence"    # I

    .line 199
    sget-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->LOW:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    .line 200
    invoke-static {}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->values()[Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 201
    .local v3, "type":Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 202
    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    .line 203
    goto :goto_1

    .line 200
    .end local v3    # "type":Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    :goto_1
    return-void
.end method

.method public setDwellTime(I)V
    .locals 0
    .param p1, "dwellTime"    # I

    .line 219
    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    .line 220
    return-void
.end method

.method public setDwellType(I)V
    .locals 5
    .param p1, "dwellType"    # I

    .line 209
    sget-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$DwellTypes;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 210
    invoke-static {}, Lcom/qti/geofence/GeofenceData$DwellTypes;->values()[Lcom/qti/geofence/GeofenceData$DwellTypes;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 211
    .local v3, "type":Lcom/qti/geofence/GeofenceData$DwellTypes;
    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$DwellTypes;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 212
    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 213
    goto :goto_1

    .line 210
    .end local v3    # "type":Lcom/qti/geofence/GeofenceData$DwellTypes;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    :goto_1
    return-void
.end method

.method public setGeofenceId(I)V
    .locals 0
    .param p1, "gfId"    # I

    .line 223
    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    .line 224
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .line 173
    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    .line 174
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 177
    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    .line 178
    return-void
.end method

.method public setNotifyResponsiveness(I)V
    .locals 0
    .param p1, "notifyResponsiveness"    # I

    .line 185
    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    .line 186
    return-void
.end method

.method public setPausedStatus(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    .line 228
    return-void
.end method

.method public setRadius(D)V
    .locals 0
    .param p1, "radius"    # D

    .line 181
    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    .line 182
    return-void
.end method

.method public setTransitionType(I)V
    .locals 5
    .param p1, "transitionType"    # I

    .line 189
    sget-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    .line 190
    invoke-static {}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->values()[Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 191
    .local v3, "type":Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 192
    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    .line 193
    goto :goto_1

    .line 190
    .end local v3    # "type":Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 232
    sget-boolean v0, Lcom/qti/geofence/GeofenceData;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/qti/geofence/GeofenceData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in GeofenceData: writeToParcel(); responsiveness is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; latitude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "; longitude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "; radius is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "; transitionTypes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    .line 238
    invoke-virtual {v2}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; confidence is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    .line 239
    invoke-virtual {v2}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; dwellTimeMask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 240
    invoke-virtual {v2}, Lcom/qti/geofence/GeofenceData$DwellTypes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; dwellTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; AppTextData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Geofence id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 248
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 249
    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 250
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$DwellTypes;

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$DwellTypes;->name()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 256
    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    return-void
.end method
