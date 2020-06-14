.class public Lcom/android/nfc/beam/BeamTransferManager;
.super Ljava/lang/Object;
.source "BeamTransferManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferManager$Callback;
    }
.end annotation


# static fields
.field static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field static final ALIVE_CHECK_MS:I = 0x4e20

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final BEAM_NOTIFICATION_CHANNEL:Ljava/lang/String; = "beam_notification_channel"

.field static final DATA_LINK_TYPE_BLUETOOTH:I = 0x1

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BeamTransferManager"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDataLinkType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteActivating:Z

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 149
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 150
    iput-boolean p4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 151
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 153
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 154
    iget-boolean v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 155
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 157
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 160
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 161
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 168
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 169
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 170
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 171
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 172
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 174
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 177
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0003

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "beam_notification_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 180
    .local v0, "notificationChannel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 181
    return-void
.end method

.method static checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .line 505
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BeamTransferManager"

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v1

    .line 510
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 512
    :cond_1
    const-string v0, "External storage not mounted, can\'t store file."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v1
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "beamRoot"    # Ljava/lang/String;

    .line 540
    const-string v0, "yyyy-MM-dd"

    .line 541
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 542
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "beam-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "newPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "newFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 545
    .local v5, "count":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-object v4
.end method

.method static generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 518
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 519
    .local v0, "dotIndex":I
    const/4 v1, 0x0

    .line 520
    .local v1, "extension":Ljava/lang/String;
    const/4 v2, 0x0

    .line 521
    .local v2, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v0, :cond_0

    .line 522
    const-string v1, ""

    .line 523
    move-object v2, p1

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 528
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v3, "dstFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 530
    .local v4, "count":I
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 531
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 533
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 535
    :cond_1
    return-object v3
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "cancelIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 300
    return-void
.end method


# virtual methods
.method buildCancelIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 496
    :goto_0
    const-string v2, "com.android.nfc.handover.extra.INCOMING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 501
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .line 478
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "viewIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 484
    .local v2, "mediaUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.nfc.fileprovider"

    invoke-static {v3, v5, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    nop

    .line 487
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const v4, 0x10008003

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    return-object v0
.end method

.method cancel()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 281
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 283
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 285
    :cond_2
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_1

    .line 289
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 292
    :goto_1
    return-void
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 233
    const-string v0, "BeamTransferManager"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 234
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 235
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 237
    if-nez p3, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 240
    :cond_2
    if-eqz p3, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_3
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_4
    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v0, v2, :cond_8

    .line 252
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 253
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_2

    .line 255
    :cond_6
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_2

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 261
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 450
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_0

    .line 453
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_1

    const/4 v1, 0x5

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 455
    :goto_0
    return v2

    .line 456
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 458
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer timed out for id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BeamTransferManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 461
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 3

    .line 264
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 266
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_0
    return v1
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 465
    :try_start_0
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local p0    # "this":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_0
    if-eqz p2, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_1
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 470
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 472
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_2
    monitor-exit p0

    return-void

    .line 464
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method processFiles()V
    .locals 11

    .line 391
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "beam"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "beamPath":Ljava/io/File;
    invoke-static {v1}, Lcom/android/nfc/beam/BeamTransferManager;->checkMediaStorage(Ljava/io/File;)Z

    move-result v2

    const/4 v5, 0x4

    const-string v6, "BeamTransferManager"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/beam/BeamTransferManager;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create multiple path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0, v5}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 405
    return-void

    .line 409
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 410
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 411
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v5, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 416
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 415
    invoke-static {v7, v8}, Lcom/android/nfc/beam/BeamTransferManager;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 417
    .local v7, "dstFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Renaming from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    const-string v9, " to "

    if-nez v8, :cond_3

    .line 419
    sget-object v8, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 421
    return-void

    .line 423
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v8, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did successful rename from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "srcFile":Ljava/io/File;
    .end local v7    # "dstFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 435
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 436
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 442
    :cond_6
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_2

    .line 437
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 438
    .local v3, "arrayPaths":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 439
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 440
    .end local v3    # "arrayPaths":[Ljava/lang/String;
    nop

    .line 445
    :goto_2
    return-void

    .line 395
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v2, "Media storage not valid or no uris received."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, v5}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 397
    return-void
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 221
    :try_start_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 222
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 223
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local p0    # "this":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .line 273
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 274
    return-void
.end method

.method public start()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 199
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_1

    .line 201
    new-instance v0, Lcom/android/nfc/beam/BluetoothOppHandover;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/beam/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lcom/android/nfc/beam/BluetoothOppHandover;->start()V

    .line 204
    :cond_1
    return-void
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 207
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 215
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 217
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 218
    return-void
.end method

.method updateNotification()V
    .locals 9

    .line 303
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "beam_notification_channel"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    .local v0, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 306
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 307
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 310
    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "beamString":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v2    # "beamString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    .restart local v2    # "beamString":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    if-eq v3, v1, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    goto/16 :goto_5

    .line 334
    :cond_1
    const/4 v6, 0x5

    const v7, 0x1080082

    const v8, 0x1080089

    if-ne v3, v6, :cond_3

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 336
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 337
    :cond_2
    move v7, v8

    .line 336
    :goto_1
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 338
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 339
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 341
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_d

    .line 342
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v1

    .line 344
    .local v1, "viewIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v3, v6, v1, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 347
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 348
    .end local v1    # "viewIntent":Landroid/content/Intent;
    .end local v3    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_8

    .line 349
    :cond_3
    const/4 v1, 0x4

    if-ne v3, v1, :cond_5

    .line 350
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 351
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_4

    goto :goto_2

    .line 352
    :cond_4
    move v7, v8

    .line 351
    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 353
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 354
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 355
    :cond_5
    const/4 v1, 0x6

    if-eq v3, v1, :cond_7

    const/4 v1, 0x7

    if-ne v3, v1, :cond_6

    goto :goto_3

    .line 362
    :cond_6
    return-void

    .line 356
    :cond_7
    :goto_3
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 357
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_8

    goto :goto_4

    .line 358
    :cond_8
    move v7, v8

    .line 357
    :goto_4
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 359
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 360
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 317
    :cond_9
    :goto_5
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 318
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v3, :cond_a

    const v3, 0x1080081

    goto :goto_6

    .line 319
    :cond_a
    const v3, 0x1080088

    .line 318
    :goto_6
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 320
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 321
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 322
    const v3, 0x7f060001

    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0011

    .line 323
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 322
    invoke-virtual {v0, v3, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_b

    .line 326
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v6, v6

    div-float/2addr v7, v6

    .line 327
    .local v7, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    mul-float/2addr v8, v7

    add-float v3, v6, v8

    .line 329
    .end local v7    # "progressUnit":F
    :cond_b
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    const/16 v7, 0x64

    if-lez v6, :cond_c

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_c

    .line 330
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v7, v1, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 332
    :cond_c
    invoke-virtual {v0, v7, v5, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 334
    .end local v3    # "progress":F
    :goto_7
    nop

    .line 365
    :cond_d
    :goto_8
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 366
    return-void
.end method

.method updateStateAndNotification(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 369
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 372
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 380
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    if-nez v0, :cond_3

    .line 382
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    .line 384
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V

    .line 386
    :cond_3
    return-void
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 184
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Whitelisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for BT OPP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeamTransferManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    return-void
.end method
