.class public Lcom/dts/dtssdk/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public b:Ljava/lang/Thread;

.field public c:Ljava/lang/Thread;

.field public d:Ljava/util/concurrent/Semaphore;

.field public final e:I

.field public volatile f:[B

.field public volatile g:[B

.field public h:Ljava/nio/ByteBuffer;

.field public i:Ljava/nio/ByteBuffer;

.field public j:Landroid/os/Handler;

.field public k:Ljava/lang/String;

.field private m:Ljava/util/concurrent/Semaphore;

.field private n:Ljava/util/concurrent/Semaphore;

.field private o:Z

.field private p:F

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->m:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->n:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->d:Ljava/util/concurrent/Semaphore;

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->f:[B

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->g:[B

    iput-boolean v1, p0, Lcom/dts/dtssdk/e/a;->o:Z

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->r:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->j:Landroid/os/Handler;

    iput-object v2, p0, Lcom/dts/dtssdk/e/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/dts/dtssdk/e/a;->r:Landroid/content/Context;

    const v0, 0xbb80

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/dts/dtssdk/e/a;->e:I

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const v2, 0xbb80

    iget v5, p0, Lcom/dts/dtssdk/e/a;->e:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/dts/dtssdk/e/a;->k:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/dts/dtssdk/e/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DitherPlayer constructor mIntSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dts/dtssdk/e/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dts/dtssdk/e/a;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->d:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private static a(S)S
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/e/a;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dts/dtssdk/e/a;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;I)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dts/dtssdk/e/a;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/e/a;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/e/a;->g:[B

    return-object p1
.end method

.method static synthetic b(Lcom/dts/dtssdk/e/a;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    return-object v0
.end method

.method private b(F)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dts/dtssdk/e/a;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/e/a;->f:[B

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 13

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_1
    :goto_0
    if-nez v10, :cond_9

    const/16 v3, 0xa

    if-ge v9, v3, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-nez v1, :cond_2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_6

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-gez v5, :cond_4

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const/4 v8, 0x4

    :goto_2
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    :goto_3
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v11, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-ltz v5, :cond_8

    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_b

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_6
    move v9, v3

    move v10, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_3
    :goto_7
    return-object v0

    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "inputBufIndex "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    :try_start_2
    iget v8, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v8, v8, [B

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v12, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v4

    sget-object v8, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const/4 v3, -0x3

    if-eq v5, v3, :cond_1

    const/4 v3, -0x2

    if-ne v5, v3, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "output format has changed to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v3, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_7

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_a
    move v4, v10

    goto/16 :goto_6

    :cond_b
    move v3, v9

    goto/16 :goto_4
.end method

.method static synthetic c(Lcom/dts/dtssdk/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtssdk/e/a;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/dts/dtssdk/e/a;)I
    .locals 1

    iget v0, p0, Lcom/dts/dtssdk/e/a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->m:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->n:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtssdk/e/a;)[B
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->f:[B

    return-object v0
.end method

.method static synthetic h(Lcom/dts/dtssdk/e/a;)[B
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->g:[B

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/e/a;->b(F)V

    return-void
.end method

.method public a(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3debc8e3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    :goto_1
    iput v0, p0, Lcom/dts/dtssdk/e/a;->p:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dts/dtssdk/e/a$2;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtssdk/e/a$2;-><init>(Lcom/dts/dtssdk/e/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(I)[B
    .locals 13

    const-wide/16 v4, 0x7fff

    const-wide/16 v2, -0x8000

    const/16 v12, 0x10

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p1, :cond_5

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->a(S)S

    move-result v0

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-long v8, v0

    shl-long/2addr v8, v12

    long-to-double v8, v8

    iget v0, p0, Lcom/dts/dtssdk/e/a;->p:F

    float-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    int-to-long v0, v1

    const/4 v10, 0x1

    shl-long/2addr v0, v10

    add-long/2addr v0, v8

    shr-long/2addr v0, v12

    cmp-long v8, v0, v4

    if-lez v8, :cond_2

    move-wide v0, v4

    :cond_2
    cmp-long v8, v0, v2

    if-gez v8, :cond_3

    move-wide v0, v2

    :cond_3
    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->a(S)S

    move-result v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v6, 0x2

    if-lt v0, p1, :cond_4

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    move v6, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/e/a;->c(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Demux Error :"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v2, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    :goto_0
    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtssdk/e/a;->e()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/dts/dtssdk/e/a;->e()V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtssdk/e/a;->a()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    :cond_2
    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
